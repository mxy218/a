.class final Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarTouchListener"
.end annotation


# instance fields
.field private mDownYPos:F

.field private mMaxYOffset:I

.field private mPxPerProgress:F

.field private mStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .registers 4

    .line 1089
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1091
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget p2, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v0, -0x12c

    if-ne p2, v0, :cond_20

    .line 1092
    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$3200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$3500(Lcom/android/systemui/volume/VolumePanel;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000  # 100.0f

    mul-float/2addr p1, v0

    div-float/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mPxPerProgress:F

    :cond_20
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Lcom/android/systemui/volume/VolumePanel$1;)V
    .registers 4

    .line 1084
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1098
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v0, 0x1

    const/16 v1, -0x12c

    if-ne p1, v1, :cond_59

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)I

    move-result p1

    if-nez p1, :cond_59

    .line 1099
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object p1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    .line 1100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x64

    if-nez v1, :cond_30

    .line 1101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mDownYPos:F

    .line 1102
    invoke-virtual {p1}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result p1

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mPxPerProgress:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mMaxYOffset:I

    goto :goto_59

    .line 1103
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_59

    .line 1105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mDownYPos:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mMaxYOffset:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_59

    .line 1106
    invoke-virtual {p1}, Lcom/meizu/common/widget/ProgressBar;->getProgress()I

    move-result p2

    if-le p2, v2, :cond_58

    .line 1107
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 1108
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamControl:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const p2, 0x8001

    invoke-static {p1, p0, v0, p2}, Lcom/android/systemui/volume/VolumePanel;->access$3600(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    :cond_58
    return v0

    .line 1114
    :cond_59
    :goto_59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_60

    return v0

    :cond_60
    const/4 p0, 0x0

    return p0
.end method
