.class public Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;
.super Ljava/lang/Object;
.source "FlymeRAngleAdjustAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppViewHolder"
.end annotation


# instance fields
.field appIconImage:Landroid/widget/ImageView;

.field appNameText:Landroid/widget/TextView;

.field descriptionLayout:Landroid/view/View;

.field emptyTextView:Landroid/widget/TextView;

.field itemsLayout:Landroid/view/View;

.field rAngleAdustSwitch:Lcom/meizu/common/widget/Switch;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
