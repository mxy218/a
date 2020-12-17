.class Lcom/android/systemui/volume/VolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field anim:Landroid/animation/ObjectAnimator;

.field animTargetProgress:I

.field controller:Landroid/media/session/MediaController;

.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconExtendMuteRes:I

.field iconExtendRes:I

.field iconMuteRes:I

.field iconRes:I

.field itemLayout:Landroid/widget/LinearLayout;

.field seekbarBg:Landroid/view/View;

.field seekbarLayout:Landroid/widget/RelativeLayout;

.field seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

.field streamTv:Landroid/widget/TextView;

.field streamType:I

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V
    .registers 3

    .line 392
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method
