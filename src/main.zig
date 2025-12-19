//! main.zig

/// std
// std
/// std's
const std = @import("std");
const learn_zig = @import("learn_zig");

/// main
/// i hate u
/// 🫠
pub fn main() !void {
    try std.fs.File.stdout().writeAll("what wrong with this\n");
    std.debug.print("hello world\n", .{}); // hello world
    // hello world again

    const foo = Vec2.zero();
    std.debug.print("hello {}\n", .{foo});

    try learn_zig.bufferedPrint();
}

/// what is this
const Vec2 = struct {
    //! what is this
    x: i32,
    y: i32,

    pub fn zero() Vec2 {
        return Vec2{ .x = 0, .y = 0 };
    }
};
