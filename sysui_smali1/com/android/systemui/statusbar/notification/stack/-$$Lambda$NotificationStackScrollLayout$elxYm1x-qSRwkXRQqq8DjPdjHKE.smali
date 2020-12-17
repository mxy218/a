.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$elxYm1x-qSRwkXRQqq8DjPdjHKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$elxYm1x-qSRwkXRQqq8DjPdjHKE;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$elxYm1x-qSRwkXRQqq8DjPdjHKE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$elxYm1x-qSRwkXRQqq8DjPdjHKE;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$elxYm1x-qSRwkXRQqq8DjPdjHKE;->f$1:Z

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$setFilterDismissView$12$NotificationStackScrollLayout(ZLandroid/view/View;)V

    return-void
.end method
