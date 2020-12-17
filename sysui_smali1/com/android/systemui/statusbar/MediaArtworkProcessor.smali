.class public final Lcom/android/systemui/statusbar/MediaArtworkProcessor;
.super Ljava/lang/Object;
.source "MediaArtworkProcessor.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0004¢\u0006\u0002\n\u0000¨\u0006\r"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
        "",
        "()V",
        "mArtworkCache",
        "Landroid/graphics/Bitmap;",
        "mTmpSize",
        "Landroid/graphics/Point;",
        "clearCache",
        "",
        "processArtwork",
        "context",
        "Landroid/content/Context;",
        "artwork",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private mArtworkCache:Landroid/graphics/Bitmap;

.field private final mTmpSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    const-string v0, "inBitmap"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "artwork"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_11

    return-object v1

    .line 51
    :cond_11
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    invoke-virtual {p1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    iget-object v4, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x6

    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    div-int/lit8 p0, p0, 0x6

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Landroid/util/MathUtils;->fitRect(Landroid/graphics/Rect;I)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v4, 0x1

    invoke-static {p2, p0, p1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_55} :catch_e4
    .catchall {:try_start_1e .. :try_end_55} :catchall_df

    .line 64
    :try_start_55
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v4, :cond_7a

    .line 66
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_66} :catch_dc
    .catchall {:try_start_55 .. :try_end_66} :catchall_d9

    .line 67
    :try_start_66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_69} :catch_72
    .catchall {:try_start_66 .. :try_end_69} :catchall_6b

    move-object p0, p1

    goto :goto_7a

    :catchall_6b
    move-exception p0

    move-object v1, v3

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto/16 :goto_105

    :catch_72
    move-exception p0

    move-object v0, v3

    move-object v1, v0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto/16 :goto_e9

    .line 69
    :cond_7a
    :goto_7a
    :try_start_7a
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 70
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 69
    invoke-static {p1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 73
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v4, 0x2

    .line 72
    invoke-static {v1, p0, v0, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_92} :catch_dc
    .catchall {:try_start_7a .. :try_end_92} :catchall_d9

    .line 74
    :try_start_92
    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_92 .. :try_end_96} :catch_d6
    .catchall {:try_start_92 .. :try_end_96} :catchall_d3

    const/high16 v4, 0x41c80000  # 25.0f

    .line 76
    :try_start_98
    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 77
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 78
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 79
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p2

    .line 83
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string/jumbo v5, "swatch"

    .line 84
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p2

    const/16 v5, 0xb2

    invoke-static {p2, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_98 .. :try_end_c0} :catch_d1
    .catchall {:try_start_98 .. :try_end_c0} :catchall_103

    if-eqz v0, :cond_c5

    .line 90
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_c5
    if-eqz v1, :cond_ca

    .line 91
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 92
    :cond_ca
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :catch_d1
    move-exception p1

    goto :goto_e9

    :catchall_d3
    move-exception p1

    move-object v1, v3

    goto :goto_104

    :catch_d6
    move-exception p1

    move-object v1, v3

    goto :goto_e9

    :catchall_d9
    move-exception p1

    move-object v1, v3

    goto :goto_105

    :catch_dc
    move-exception p1

    move-object v0, v3

    goto :goto_e8

    :catchall_df
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    move-object v1, p0

    goto :goto_105

    :catch_e4
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    move-object v0, p0

    :goto_e8
    move-object v1, v0

    :goto_e9
    :try_start_e9
    const-string p2, "MediaArtworkProcessor"

    const-string v4, "error while processing artwork"

    .line 87
    invoke-static {p2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_103

    if-eqz v0, :cond_f5

    .line 90
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_f5
    if-eqz v1, :cond_fa

    .line 91
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 92
    :cond_fa
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    if-eqz p0, :cond_102

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_102
    return-object v3

    :catchall_103
    move-exception p1

    :goto_104
    move-object v3, v0

    :goto_105
    if-eqz v3, :cond_10a

    .line 90
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    :cond_10a
    if-eqz v1, :cond_10f

    .line 91
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 92
    :cond_10f
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    if-eqz p0, :cond_117

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_117
    throw p1
.end method
