.class public final enum Lcom/caverock/androidsvg/SVG$Style$FillRule;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/SVG$Style$FillRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public static final enum EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public static final enum NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1010
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const/4 v1, 0x0

    const-string v2, "NonZero"

    invoke-direct {v0, v2, v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1011
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const/4 v2, 0x1

    const-string v3, "EvenOdd"

    invoke-direct {v0, v3, v2}, Lcom/caverock/androidsvg/SVG$Style$FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1008
    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    aput-object v3, v0, v1

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    aput-object v1, v0, v2

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1008
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .registers 2

    .line 1
    const-class v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .registers 4

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Style$FillRule;

    array-length v1, v0

    new-array v2, v1, [Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
