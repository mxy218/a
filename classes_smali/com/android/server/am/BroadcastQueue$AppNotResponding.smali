.class final Lcom/android/server/am/BroadcastQueue$AppNotResponding;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppNotResponding"
.end annotation


# instance fields
.field private final mAnnotation:Ljava/lang/String;

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 4
    .param p2, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "annotation"  # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 224
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mAnnotation:Ljava/lang/String;

    .line 225
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 229
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mAnnotation:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 230
    return-void
.end method
