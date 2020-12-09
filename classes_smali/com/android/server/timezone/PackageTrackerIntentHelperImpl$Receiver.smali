.class Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageTrackerIntentHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Receiver"
.end annotation


# instance fields
.field private final mPackageTracker:Lcom/android/server/timezone/PackageTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/timezone/PackageTracker;)V
    .registers 2

    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timezone/PackageTracker;Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$1;)V
    .registers 3

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;-><init>(Lcom/android/server/timezone/PackageTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "timezone.PackageTrackerIntentHelperImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/timezone/PackageTracker;->triggerUpdateIfNeeded(Z)V

    .line 114
    return-void
.end method
