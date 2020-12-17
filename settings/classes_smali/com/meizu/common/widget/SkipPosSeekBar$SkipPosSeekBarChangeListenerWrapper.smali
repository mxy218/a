.class Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;
.super Ljava/lang/Object;
.source "SkipPosSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SkipPosSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkipPosSeekBarChangeListenerWrapper"
.end annotation


# instance fields
.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lcom/meizu/common/widget/SkipPosSeekBar;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/SkipPosSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8

    .line 70
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v1, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eqz v1, :cond_15

    .line 71
    div-int v2, p2, v1

    rem-int v3, p2, v1

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v2, v1

    iput v2, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    goto :goto_17

    .line 73
    :cond_15
    iput p2, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    .line 76
    :goto_17
    iget-object p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_1e

    .line 77
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_1e
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_7

    .line 84
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_7
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v1, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eqz v1, :cond_28

    .line 91
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v1, v1, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    rem-int v2, v0, v1

    if-eqz v2, :cond_28

    .line 93
    rem-int v2, v0, v1

    div-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_1c

    rem-int v2, v0, v1

    sub-int/2addr v1, v2

    goto :goto_1f

    :cond_1c
    neg-int v2, v0

    rem-int v1, v2, v1

    :goto_1f
    add-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v2, v1, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    div-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setSkipProgress(I)V

    .line 98
    :cond_28
    iget-object p0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_2f

    .line 99
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_2f
    return-void
.end method
