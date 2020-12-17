.class Lcom/android/server/policy/PhoneWindowManager$16;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 6229
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 6231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6232
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4200(Lcom/android/server/policy/PhoneWindowManager;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 6233
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 6234
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;J)J

    .line 6236
    :cond_1c
    return-void
.end method
