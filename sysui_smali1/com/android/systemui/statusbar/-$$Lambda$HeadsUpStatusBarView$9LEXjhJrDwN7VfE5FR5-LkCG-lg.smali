.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$9LEXjhJrDwN7VfE5FR5-LkCG-lg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$9LEXjhJrDwN7VfE5FR5-LkCG-lg;->f$0:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$9LEXjhJrDwN7VfE5FR5-LkCG-lg;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$9LEXjhJrDwN7VfE5FR5-LkCG-lg;->f$0:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$9LEXjhJrDwN7VfE5FR5-LkCG-lg;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->lambda$setEntry$0$HeadsUpStatusBarView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
