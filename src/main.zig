const std = @import("std");

pub fn main() !void {
    try std.fs.File.stdout().writeAll("what wrong with this\n");
    std.debug.print("hello world\n", .{});
}
