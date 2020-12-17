.class Lcom/android/settingslib/wifi/WifiTracker$5;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 2

    .line 1660
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$5;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "WifiTracker"

    const-string v1, "The remote free wifi service die"

    .line 1664
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$5;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$2200(Lcom/android/settingslib/wifi/WifiTracker;Z)V

    return-void
.end method
