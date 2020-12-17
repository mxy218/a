.class public Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;
.super Ljava/lang/Object;
.source "VolleyRequestManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/VolleyRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolleyErrorListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;->onErrorResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected onErrorResponse(Ljava/lang/String;)V
    .registers 2

    const p0, 0x0

    throw p0
.end method
