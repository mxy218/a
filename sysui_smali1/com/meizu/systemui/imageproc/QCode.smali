.class public Lcom/meizu/systemui/imageproc/QCode;
.super Ljava/lang/Object;
.source "QCode.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "QCode"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 6
    invoke-static {p0, p1}, Lcom/meizu/systemui/imageproc/QCode;->nativeEncrypt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeEncrypt(Ljava/lang/String;Ljava/lang/String;)V
.end method
