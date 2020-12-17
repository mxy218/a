.class public Lcom/android/systemui/glwallpaper/EglHelper;
.super Ljava/lang/Object;
.source "EglHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EglHelper"


# instance fields
.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglReady:Z

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mEglVersion:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 71
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    return-void
.end method

.method private chooseEglConfig()Landroid/opengl/EGLConfig;
    .registers 11

    const/4 v0, 0x1

    new-array v9, v0, [I

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->getConfig()[I

    move-result-object v2

    .line 116
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v0

    move-object v7, v9

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_37

    .line 117
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_37
    const/4 p0, 0x0

    .line 120
    aget v2, v9, p0

    if-gtz v2, :cond_55

    .line 121
    sget-object v0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglChooseConfig failed, invalid configs count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v9, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 124
    :cond_55
    aget-object p0, v0, p0

    return-object p0
.end method

.method private getConfig()[I
    .registers 1

    const/16 p0, 0x11

    new-array p0, p0, [I

    .line 130
    fill-array-data p0, :array_8

    return-object p0

    :array_8
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3027
        0x3038
        0x3038
    .end array-data
.end method


# virtual methods
.method public createEglContext()Z
    .registers 6

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 193
    fill-array-data v0, :array_48

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 196
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    .line 202
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p0, v0, :cond_3e

    .line 203
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

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

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3e
    const/4 p0, 0x1

    return p0

    .line 198
    :cond_40
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string v0, "mEglDisplay is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :array_48
    .array-data 4
        0x3098
        0x2
        0x3100
        0x3103
        0x3038
    .end array-data
.end method

.method public createEglSurface(Landroid/view/SurfaceHolder;)Z
    .registers 6

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 150
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 156
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_46

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v0, :cond_1b

    goto :goto_46

    .line 161
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_44

    .line 162
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eglMakeCurrent failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    const/4 p0, 0x1

    return p0

    .line 157
    :cond_46
    :goto_46
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createWindowSurface failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 152
    :cond_65
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "mEglDisplay is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public destroyEglContext()V
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 214
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    :cond_10
    return-void
.end method

.method public destroyEglSurface()V
    .registers 4

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 174
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 175
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_19
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    const/4 v0, 0x0

    aget p4, p4, v0

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    const/4 v1, 0x1

    aget p4, p4, v1

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "EGL version="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ", "

    .line 274
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "EGL ready="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglReady:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    .line 275
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "has EglContext="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    .line 276
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "has EglSurface="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->getConfig()[I

    move-result-object p0

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x7b

    .line 280
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    array-length p4, p0

    :goto_65
    if-ge v0, p4, :cond_7d

    aget v2, p0, v0

    const-string v3, "0x"

    .line 282
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 284
    :cond_7d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    const/16 p4, 0x7d

    invoke-virtual {p2, p0, p4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "EglConfig="

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .registers 2

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 255
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    .line 258
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 259
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_1d
    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglReady:Z

    return-void
.end method

.method public hasEglContext()Z
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasEglDisplay()Z
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasEglSurface()Z
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz p0, :cond_a

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public init(Landroid/view/SurfaceHolder;)Z
    .registers 6

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_2c

    .line 82
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 86
    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglVersion:[I

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-nez v1, :cond_54

    .line 88
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 92
    :cond_54
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->chooseEglConfig()Landroid/opengl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v1, :cond_66

    .line 94
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "eglConfig not initialized!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 98
    :cond_66
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglContext()Z

    move-result v1

    if-nez v1, :cond_74

    .line 99
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t create EGLContext!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 103
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglSurface(Landroid/view/SurfaceHolder;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 104
    sget-object p0, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t create EGLSurface!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 108
    :cond_82
    iput-boolean v3, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglReady:Z

    return v3
.end method

.method public swapBuffer()Z
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    .line 241
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_2a

    .line 243
    sget-object v1, Lcom/android/systemui/glwallpaper/EglHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBuffers failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return p0
.end method
