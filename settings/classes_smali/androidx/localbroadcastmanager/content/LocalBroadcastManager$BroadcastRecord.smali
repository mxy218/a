.class final Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BroadcastRecord"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    .line 87
    iput-object p2, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    return-void
.end method