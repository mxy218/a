.class Lcom/android/systemui/qs/AutoAddTracker$1;
.super Landroid/database/ContentObserver;
.source "AutoAddTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/AutoAddTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/AutoAddTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/AutoAddTracker;Landroid/os/Handler;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 105
    iget-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-static {p1}, Lcom/android/systemui/qs/AutoAddTracker;->access$100(Lcom/android/systemui/qs/AutoAddTracker;)Landroid/util/ArraySet;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-static {p0}, Lcom/android/systemui/qs/AutoAddTracker;->access$000(Lcom/android/systemui/qs/AutoAddTracker;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
