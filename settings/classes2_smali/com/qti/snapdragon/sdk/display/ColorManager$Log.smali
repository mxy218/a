.class public Lcom/qti/snapdragon/sdk/display/ColorManager$Log;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Log"
.end annotation


# direct methods
.method protected static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 2616
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2621
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2622
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
