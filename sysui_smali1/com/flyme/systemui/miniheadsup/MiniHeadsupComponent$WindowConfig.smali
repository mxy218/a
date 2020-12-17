.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;
.super Ljava/lang/Object;
.source "MiniHeadsupComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowConfig"
.end annotation


# instance fields
.field final FIRSTWINDOW_ICON_MARGE_LEFT:F

.field final FIRSTWINDOW_MAX_WIDTH:I

.field final FIRSTWINDOW_MIN_WIDTH:I

.field final FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

.field final MINIWINDOW_OFFSET_TOP:I

.field final SECONDWINDOW_ICON_MARGE_LEFT:F

.field final SECONDWINDOW_ICON_MAX_WIDTH:I

.field final SECONDWINDOW_ICON_MIN_WIDTH:I

.field final WINDOW_HEIGHT:I

.field final WINDOW_WIDTH:I

.field firstWindowWidth:I

.field secondWindowWidth:I

.field thirdWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x92

    .line 281
    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    const/16 v1, 0x2b

    .line 282
    invoke-virtual {p0, v1, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    const/16 v3, 0x1c

    .line 283
    invoke-virtual {p0, v3, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v3

    iput v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->MINIWINDOW_OFFSET_TOP:I

    .line 284
    iget v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->MINIWINDOW_OFFSET_TOP:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    const/16 v2, 0xe

    .line 286
    invoke-virtual {p0, v2, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MIN_WIDTH:I

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MAX_WIDTH:I

    const/16 v0, 0x31

    .line 288
    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

    .line 290
    invoke-virtual {p0, v1, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MIN_WIDTH:I

    const/16 v0, 0x46

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MAX_WIDTH:I

    const/high16 v0, 0x41a80000  # 21.0f

    mul-float/2addr v0, p1

    .line 293
    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_ICON_MARGE_LEFT:F

    const/high16 v0, 0x40f00000  # 7.5f

    mul-float/2addr p1, v0

    .line 294
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MARGE_LEFT:F

    .line 296
    iget p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->thirdWindowWidth:I

    return-void
.end method


# virtual methods
.method getInt(IF)I
    .registers 3

    int-to-float p0, p1

    mul-float/2addr p0, p2

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
