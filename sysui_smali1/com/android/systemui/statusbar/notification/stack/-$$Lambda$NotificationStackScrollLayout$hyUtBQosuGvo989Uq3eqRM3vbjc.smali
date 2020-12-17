.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/ArrayList;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$2:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$2:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$hyUtBQosuGvo989Uq3eqRM3vbjc;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$clearNotifications$7$NotificationStackScrollLayout(Ljava/util/ArrayList;IZ)V

    return-void
.end method
