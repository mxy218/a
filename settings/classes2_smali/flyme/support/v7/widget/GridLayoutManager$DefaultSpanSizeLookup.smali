.class public final Lflyme/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1122
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .registers 3

    .line 1131
    rem-int/2addr p1, p2

    return p1
.end method

.method public getSpanSize(I)I
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
