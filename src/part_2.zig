const p = std.debug.print;
const a = std.debug.assert;
const std = @import("std");

pub fn part_2() !void {
    const foo = 1 + 1;
    const bar = 7 / 3;
    const baz = 7.0 / 3.0;

    p(
        \\foo: {}
        \\bar: {}
        \\baz: {}
        \\three bools: {} {} {}
        \\
    , .{ foo, bar, baz, true and true, true or false, !true });

    var maybe: ?[]const u8 = null; // i dont understand error msg for omitting const
    a(maybe == null);

    // copy paste this crap for now
    p("maybe: {?s} type: {}\n", .{ maybe, @TypeOf(maybe) });
    p("maybe: {any} type: {}\n", .{ maybe, @TypeOf(maybe) });

    maybe = "idiot";
    p("maybe: {?s} type: {}\n", .{ maybe, @TypeOf(maybe) });
    p("maybe: {any} type: {}\n", .{ maybe, @TypeOf(maybe) });

    var result: anyerror!i32 = error.ArgNotFound; // idk how error works

    p("result: {any} type: {}\n", .{ result, @TypeOf(result) });

    result = 727;
    p("result: {any} type: {}\n", .{ result, @TypeOf(result) });
}
