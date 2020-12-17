.class Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;
.super Ljava/lang/Object;
.source "RecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/RecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordRunnable"
.end annotation


# instance fields
.field private mNeedReset:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/RecordView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/voicewakeup/RecordView;Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 598
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 596
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mNeedReset:Z

    .line 599
    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 604
    iget-boolean v0, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mNeedReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 605
    :goto_6
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/RecordView;->access$000(Lcom/meizu/settings/voicewakeup/RecordView;)I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 606
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/RecordView;->access$100(Lcom/meizu/settings/voicewakeup/RecordView;)[Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/meizu/settings/voicewakeup/RecordView$TrailBuf;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 608
    :cond_1c
    iput-boolean v1, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mNeedReset:Z

    .line 611
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/RecordView;->access$200(Lcom/meizu/settings/voicewakeup/RecordView;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x0

    .line 613
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    const-wide/16 v3, 0xa

    .line 615
    :try_start_2c
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHeight()I

    move-result v8

    invoke-direct {v6, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 617
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 618
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->this$0:Lcom/meizu/settings/voicewakeup/RecordView;

    invoke-static {v5, v0}, Lcom/meizu/settings/voicewakeup/RecordView;->access$300(Lcom/meizu/settings/voicewakeup/RecordView;Landroid/graphics/Canvas;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4f} :catch_61
    .catchall {:try_start_2c .. :try_end_4f} :catchall_5f

    :cond_4f
    if-eqz v0, :cond_56

    .line 625
    :try_start_51
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 627
    :cond_56
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5a
    .catchall {:try_start_51 .. :try_end_59} :catchall_70

    goto :goto_74

    :catch_5a
    move-exception v0

    .line 629
    :goto_5b
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_70

    goto :goto_74

    :catchall_5f
    move-exception v1

    goto :goto_76

    :catch_61
    move-exception v5

    .line 621
    :try_start_62
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5f

    if-eqz v0, :cond_6c

    .line 625
    :try_start_67
    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 627
    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_72
    .catchall {:try_start_67 .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p0

    goto :goto_86

    :catch_72
    move-exception v0

    goto :goto_5b

    .line 632
    :goto_74
    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_70

    goto :goto_1e

    :goto_76
    if-eqz v0, :cond_7d

    .line 625
    :try_start_78
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 627
    :cond_7d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_80} :catch_81
    .catchall {:try_start_78 .. :try_end_80} :catchall_70

    goto :goto_85

    :catch_81
    move-exception p0

    .line 629
    :try_start_82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    :goto_85
    throw v1

    .line 632
    :goto_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_70

    throw p0

    :cond_88
    return-void
.end method

.method public setNeedReset(Z)V
    .registers 2

    .line 638
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/RecordView$RecordRunnable;->mNeedReset:Z

    return-void
.end method
