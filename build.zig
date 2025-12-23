const std = @import("std");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});

    try setupExe(b, "main", target);
    try setupExe(b, "preliminary", target);
}

/// HACK: Just copy paste the whole thing into another func; holy crap no dealloc
fn setupExe(b: *std.Build, name: []const u8, target: std.Build.ResolvedTarget) !void {
    const allocator = std.heap.page_allocator;

    const path = try std.fmt.allocPrint(allocator, "src/bin/{s}.zig", .{name});

    const run_name = try std.fmt.allocPrint(allocator, "run {s}", .{name});
    const run_desc = try std.fmt.allocPrint(allocator, "Run {s}", .{name});

    const exe = b.addExecutable(.{ .name = name, .root_module = b.createModule(.{ .root_source_file = b.path(path), .target = target }) });
    b.installArtifact(exe);

    const run_step = b.step(run_name, run_desc);
    const run_cmd = b.addRunArtifact(exe);
    run_step.dependOn(&run_cmd.step);
    run_cmd.step.dependOn(b.getInstallStep());

    allocator.free(path);
    allocator.free(run_name);
    allocator.free(run_desc);
}
