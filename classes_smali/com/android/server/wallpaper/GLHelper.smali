.class Lcom/android/server/wallpaper/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sMaxTextureSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-class v0, Lcom/android/server/wallpaper/GLHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/GLHelper;->TAG:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "sys.max_texture_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 63
    if-lez v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->retrieveTextureSizeFromGL()I

    move-result v0

    :goto_17
    sput v0, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 64
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxTextureSize()I
    .registers 1

    .line 145
    sget v0, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    return v0
.end method

.method private static retrieveTextureSizeFromGL()I
    .registers 18

    .line 74
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v9

    .line 75
    if-eqz v9, :cond_134

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v9, v1, :cond_134

    .line 80
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v9, v10, v0, v10, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 85
    nop

    .line 86
    new-array v12, v11, [I

    .line 87
    new-array v13, v11, [Landroid/opengl/EGLConfig;

    .line 88
    const/16 v1, 0x11

    new-array v2, v1, [I

    const/16 v1, 0x3040

    aput v1, v2, v0

    const/4 v14, 0x4

    aput v14, v2, v11

    const/16 v1, 0x3024

    const/4 v15, 0x2

    aput v1, v2, v15

    const/4 v8, 0x3

    const/16 v1, 0x8

    aput v1, v2, v8

    const/16 v3, 0x3023

    aput v3, v2, v14

    const/4 v7, 0x5

    aput v1, v2, v7

    const/4 v3, 0x6

    const/16 v4, 0x3022

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    const/16 v3, 0x3021

    aput v3, v2, v1

    const/16 v1, 0x9

    aput v0, v2, v1

    const/16 v1, 0xa

    const/16 v3, 0x3025

    aput v3, v2, v1

    const/16 v1, 0xb

    aput v0, v2, v1

    const/16 v1, 0xc

    const/16 v3, 0x3026

    aput v3, v2, v1

    const/16 v1, 0xd

    aput v0, v2, v1

    const/16 v1, 0xe

    const/16 v3, 0x3027

    aput v3, v2, v1

    const/16 v1, 0xf

    const/16 v16, 0x3038

    aput v16, v2, v1

    const/16 v1, 0x10

    aput v16, v2, v1

    .line 100
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x0

    move-object v1, v9

    move-object v4, v13

    move v10, v7

    move-object v7, v12

    move v14, v8

    move/from16 v8, v17

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 105
    aget v1, v12, v0

    if-lez v1, :cond_81

    .line 106
    aget-object v1, v13, v0

    goto :goto_82

    .line 105
    :cond_81
    const/4 v1, 0x0

    .line 109
    :goto_82
    if-eqz v1, :cond_ee

    .line 113
    new-array v2, v14, [I

    const/16 v3, 0x3098

    aput v3, v2, v0

    aput v15, v2, v11

    aput v16, v2, v15

    .line 114
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v9, v1, v3, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_cf

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v2, v3, :cond_cf

    .line 123
    new-array v3, v10, [I

    const/16 v4, 0x3057

    aput v4, v3, v0

    aput v11, v3, v11

    const/16 v4, 0x3056

    aput v4, v3, v15

    aput v11, v3, v14

    const/4 v4, 0x4

    aput v16, v3, v4

    .line 124
    nop

    .line 125
    invoke-static {v9, v1, v3, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 126
    invoke-static {v9, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 129
    new-array v3, v11, [I

    .line 130
    const/16 v4, 0xd33

    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 133
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v9, v4, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 134
    invoke-static {v9, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 135
    invoke-static {v9, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 136
    invoke-static {v9}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 137
    aget v0, v3, v0

    return v0

    .line 118
    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_ee
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_153
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_153} :catch_153

    .line 138
    :catch_153
    move-exception v0

    .line 139
    sget-object v1, Lcom/android/server/wallpaper/GLHelper;->TAG:Ljava/lang/String;

    const-string v2, "Retrieve from GL failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const v0, 0x7fffffff

    return v0
.end method
