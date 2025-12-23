const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const exe = b.addExecutable(.{ .name = "learn_zig", .root_module = b.createModule(.{ .root_source_file = b.path("src/main.zig"), .target = target }) });
    b.installArtifact(exe);

    const run_step = b.step("run", "Run learn_zig");
    const run_cmd = b.addRunArtifact(exe);
    run_step.dependOn(&run_cmd.step);
    run_step.dependOn(b.getInstallStep());
}
