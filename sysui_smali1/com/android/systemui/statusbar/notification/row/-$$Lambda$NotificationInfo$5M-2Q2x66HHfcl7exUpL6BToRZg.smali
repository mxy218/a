.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$5M-2Q2x66HHfcl7exUpL6BToRZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$5M-2Q2x66HHfcl7exUpL6BToRZg;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$5M-2Q2x66HHfcl7exUpL6BToRZg;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$updateGutsFilterAction$14$NotificationInfo(Landroid/view/View;)V

    return-void
.end method
