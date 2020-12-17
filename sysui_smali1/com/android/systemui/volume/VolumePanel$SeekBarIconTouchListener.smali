.class final Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;
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
    name = "SeekBarIconTouchListener"
.end annotation


# instance fields
.field private mCancelClick:Z

.field private mDownYPos:F

.field private mVerticalSeekBar:Lcom/meizu/common/widget/VerticalSeekBar;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/meizu/common/widget/VerticalSeekBar;)V
    .registers 3

    .line 1126
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mVerticalSeekBar:Lcom/meizu/common/widget/VerticalSeekBar;

    const/4 p1, 0x0

    .line 1128
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mCancelClick:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/meizu/common/widget/VerticalSeekBar;Lcom/android/systemui/volume/VolumePanel$1;)V
    .registers 4

    .line 1121
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/meizu/common/widget/VerticalSeekBar;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mVerticalSeekBar:Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/AbsSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1136
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1000(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5f

    .line 1137
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1c

    return v2

    .line 1138
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_48

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2b

    const/4 p2, 0x3

    if-eq v0, p2, :cond_48

    goto :goto_5f

    .line 1145
    :cond_2b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mDownYPos:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->access$2700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3c97b426

    mul-float/2addr p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5f

    .line 1146
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mCancelClick:Z

    goto :goto_5f

    :cond_48
    const/high16 p2, 0x3f800000  # 1.0f

    .line 1151
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1152
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mCancelClick:Z

    if-eqz p0, :cond_5f

    return v1

    .line 1140
    :cond_52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mDownYPos:F

    .line 1141
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumePanel$SeekBarIconTouchListener;->mCancelClick:Z

    const/high16 p0, 0x3f000000  # 0.5f

    .line 1142
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5f
    :goto_5f
    return v2
.end method
