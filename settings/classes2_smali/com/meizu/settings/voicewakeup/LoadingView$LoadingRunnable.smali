.class Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingRunnable"
.end annotation


# instance fields
.field circle_x:[F

.field circle_y:F

.field paint:Landroid/graphics/Paint;

.field radius:F

.field final surfaceHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/LoadingView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/voicewakeup/LoadingView;Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 122
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {p1}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$000(Lcom/meizu/settings/voicewakeup/LoadingView;)F

    move-result p1

    const/high16 v0, 0x40100000  # 2.25f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->radius:F

    const/4 p1, 0x5

    new-array p1, p1, [F

    .line 118
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_x:[F

    .line 124
    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 126
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->paint:Landroid/graphics/Paint;

    .line 127
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->paint:Landroid/graphics/Paint;

    const v0, -0x22b1b5

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->paint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawCicle(ILandroid/graphics/Canvas;)V
    .registers 9

    const/4 v0, 0x5

    .line 191
    rem-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_24

    .line 193
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v3}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$300(Lcom/meizu/settings/voicewakeup/LoadingView;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 194
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_x:[F

    aget v2, v2, v1

    iget v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_y:F

    iget v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->radius:F

    iget-object v5, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_24
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$200(Lcom/meizu/settings/voicewakeup/LoadingView;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->drawCicle(ILandroid/graphics/Canvas;)V

    return-void
.end method

.method public run()V
    .registers 9

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  getHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    .line 135
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadingView"

    .line 134
    invoke-static {v1, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_y:F

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 138
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_x:[F

    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v3}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$000(Lcom/meizu/settings/voicewakeup/LoadingView;)F

    move-result v3

    const/high16 v4, 0x42100000  # 36.0f

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 139
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_x:[F

    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v3}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$000(Lcom/meizu/settings/voicewakeup/LoadingView;)F

    move-result v3

    const/high16 v6, 0x41900000  # 18.0f

    mul-float/2addr v3, v6

    sub-float v3, v0, v3

    const/4 v7, 0x1

    aput v3, v2, v7

    .line 140
    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_x:[F

    aput v0, v2, v1

    .line 141
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$000(Lcom/meizu/settings/voicewakeup/LoadingView;)F

    move-result v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v0

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 142
    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->circle_x:[F

    iget-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v2}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$000(Lcom/meizu/settings/voicewakeup/LoadingView;)F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DM_DENSITY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v1}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$000(Lcom/meizu/settings/voicewakeup/LoadingView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadingView"

    invoke-static {v1, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radis : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadingView"

    invoke-static {v1, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_ad
    :goto_ad
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$100(Lcom/meizu/settings/voicewakeup/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_16e

    const/4 v0, 0x0

    const-wide/16 v1, 0xfa

    .line 149
    :try_start_b8
    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_f3

    .line 150
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 151
    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v3
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c9} :catch_118
    .catchall {:try_start_b8 .. :try_end_c9} :catchall_116

    .line 153
    :try_start_c9
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 156
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->doDraw(Landroid/graphics/Canvas;)V

    .line 159
    :cond_d9
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v4}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$208(Lcom/meizu/settings/voicewakeup/LoadingView;)I

    .line 160
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v4}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$200(Lcom/meizu/settings/voicewakeup/LoadingView;)I

    move-result v4

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_ee

    .line 161
    iget-object v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->this$0:Lcom/meizu/settings/voicewakeup/LoadingView;

    invoke-static {v4, v5}, Lcom/meizu/settings/voicewakeup/LoadingView;->access$202(Lcom/meizu/settings/voicewakeup/LoadingView;I)I

    .line 162
    :cond_ee
    monitor-exit v3

    goto :goto_f3

    :catchall_f0
    move-exception v4

    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_c9 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw v4
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f3} :catch_118
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_116

    :cond_f3
    :goto_f3
    if-eqz v0, :cond_ad

    .line 169
    :try_start_f5
    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fa} :catch_fb

    goto :goto_112

    :catch_fb
    move-exception v0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadingRunnable | run exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LoadingView"

    invoke-static {v3, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_112
    :try_start_112
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_115
    .catch Ljava/lang/InterruptedException; {:try_start_112 .. :try_end_115} :catch_140

    goto :goto_ad

    :catchall_116
    move-exception v3

    goto :goto_146

    :catch_118
    move-exception v3

    .line 165
    :try_start_119
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_116

    if-eqz v0, :cond_ad

    .line 169
    :try_start_11e
    iget-object v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_123} :catch_124

    goto :goto_13b

    :catch_124
    move-exception v0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadingRunnable | run exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LoadingView"

    invoke-static {v3, v0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_13b
    :try_start_13b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13e
    .catch Ljava/lang/InterruptedException; {:try_start_13b .. :try_end_13e} :catch_140

    goto/16 :goto_ad

    :catch_140
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_ad

    :goto_146
    if-eqz v0, :cond_16d

    .line 169
    :try_start_148
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14d} :catch_14e

    goto :goto_165

    :catch_14e
    move-exception p0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadingRunnable | run exception = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LoadingView"

    invoke-static {v0, p0}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_165
    :try_start_165
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_168
    .catch Ljava/lang/InterruptedException; {:try_start_165 .. :try_end_168} :catch_169

    goto :goto_16d

    :catch_169
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 178
    :cond_16d
    :goto_16d
    throw v3

    :cond_16e
    return-void
.end method
