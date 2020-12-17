.class Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;
.super Ljava/lang/Object;
.source "RecordSpectrumView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/RecordSpectrumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpectRunnable"
.end annotation


# instance fields
.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$200(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    const-wide/16 v2, 0x19

    const-wide/16 v4, 0x8

    .line 143
    :try_start_10
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_49

    const/4 v6, 0x0

    .line 145
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v6}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I

    move-result v6

    if-nez v6, :cond_2c

    .line 148
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v6, v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$300(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/graphics/Canvas;)V

    goto :goto_49

    .line 149
    :cond_2c
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v6}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3b

    .line 150
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v6, v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$400(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/graphics/Canvas;)V

    goto :goto_49

    .line 151
    :cond_3b
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v6}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_49

    .line 152
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v6, v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$500(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;Landroid/graphics/Canvas;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_49} :catch_67
    .catchall {:try_start_10 .. :try_end_49} :catchall_65

    :cond_49
    :goto_49
    if-eqz v0, :cond_50

    .line 160
    :try_start_4b
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 162
    :cond_50
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I

    move-result v0

    if-nez v0, :cond_5c

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_86

    .line 165
    :cond_5c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5f} :catch_60
    .catchall {:try_start_4b .. :try_end_5f} :catchall_82

    goto :goto_86

    :catch_60
    move-exception v0

    .line 167
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_82

    goto :goto_86

    :catchall_65
    move-exception v6

    goto :goto_89

    :catch_67
    move-exception v6

    .line 156
    :try_start_68
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_65

    if-eqz v0, :cond_72

    .line 160
    :try_start_6d
    iget-object v6, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 162
    :cond_72
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I

    move-result v0

    if-nez v0, :cond_7e

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_86

    .line 165
    :cond_7e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_81} :catch_84
    .catchall {:try_start_6d .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception p0

    goto :goto_a5

    :catch_84
    move-exception v0

    goto :goto_61

    .line 170
    :goto_86
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_82

    goto/16 :goto_0

    :goto_89
    if-eqz v0, :cond_90

    .line 160
    :try_start_8b
    iget-object v7, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 162
    :cond_90
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$SpectRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I

    move-result p0

    if-nez p0, :cond_9c

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_a4

    .line 165
    :cond_9c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9f} :catch_a0
    .catchall {:try_start_8b .. :try_end_9f} :catchall_82

    goto :goto_a4

    :catch_a0
    move-exception p0

    .line 167
    :try_start_a1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    :goto_a4
    throw v6

    .line 170
    :goto_a5
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_82

    throw p0

    :cond_a7
    return-void
.end method
