.class public Lcom/caverock/androidsvg/SVG$View;
.super Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "View"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1843
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;-><init>()V

    return-void
.end method
