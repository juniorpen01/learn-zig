const p = std.debug.print;
const std = @import("std");

pub fn part_4() !void {
    {
        const foo = 1234;
        // foo += 1;

        var bar: i32 = foo;
        bar += 1;

        var baz: ?i32 = undefined;
        baz = null;

        p("foo: {} bar: {} baz: {?}\n", .{ foo, bar, baz });
    }

    {
        var x: i32 = undefined;
        var y: i32 = undefined;
        var z: i32 = undefined;

        const tuple = .{ 7, 2, 7 }; // apparently a tuple
        x, y, z = tuple;
        p("x: {} y: {} z: {} tuple: {}\n", .{ x, y, z, tuple });

        const array = [_]i32{ 2, 7, 2 }; // apparently an array
        x, z, y = array;
        p("x: {} y: {} z: {} array: {any}\n", .{ x, y, z, array });

        const vector = @Vector(3, i32){ 2, 7, 2 }; // apparently a vector.. whatever that is
        x, z, y = vector;
        p("x: {} y: {} z: {} vector: {any}\n", .{ x, y, z, vector });

        const foo = .{ 7, 2, 7, 0, -1 };
        var bar: ?i32 = undefined;
        bar, _, var baz: i32, const qux, _ = foo; // i can comptime idk what it is tho
        std.debug.assert(baz == 7);
        baz = 8;
        p("foo: {} bar: {?} baz: {} qux: {}\n", .{ foo, bar, baz, qux });
    }
}
