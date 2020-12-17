.class Lcom/android/server/notification/MzDoNotDisturbHelper$2;
.super Ljava/lang/Object;
.source "MzDoNotDisturbHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 165
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 170
    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "mUpdateNotificationRunnable run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->access$600(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 173
    return-void
.end method
