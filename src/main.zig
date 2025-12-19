const part_1 = @import("part_1.zig");
const part_2 = @import("part_2.zig");
const part_3 = @import("part_3.zig");

pub fn main() !void {
    try part_1.part_1();
    try part_2.part_2();
    try part_3.part_3();
}
