.class Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;
.super Ljava/lang/Object;
.source "MzBreakerSeekbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressHook"
.end annotation


# instance fields
.field private mListenerOutdoors:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->mListenerOutdoors:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$1;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;-><init>(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->setClientHook(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setClientHook(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->mListenerOutdoors:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 70
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->mListenerOutdoors:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_7

    .line 71
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_7
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->mListenerOutdoors:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_7

    .line 77
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 78
    :cond_7
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-static {v0}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$200(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_69

    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    .line 84
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-static {v1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$200(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd  # 0.05f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_69

    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    .line 85
    invoke-static {v0}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$300(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-static {v1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$200(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_69

    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    .line 86
    invoke-static {v0}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$300(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-static {v1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$200(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v1

    if-eq v0, v1, :cond_69

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-static {v0}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$200(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-static {v0}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$200(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$302(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;I)I

    goto :goto_72

    .line 90
    :cond_69
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->this$0:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->access$302(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;I)I

    .line 92
    :goto_72
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->mListenerOutdoors:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_79

    .line 93
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_79
    return-void
.end method
