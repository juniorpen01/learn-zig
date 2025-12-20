const part_1 = @import("part_1.zig");
const part_2 = @import("part_2.zig");
const part_3 = @import("part_3.zig");
const part_4 = @import("part_4.zig");
const part_5 = @import("part_5.zig");
const std = @import("std");

pub fn main() !void {
    try part_1.part_1();
    try part_2.part_2();
    try part_3.part_3();
    try part_4.part_4();
    try part_5.part_5();
}
