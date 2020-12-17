.class public Lcom/meizu/settings/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public static d(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 9
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static e(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 27
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static w(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 21
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
