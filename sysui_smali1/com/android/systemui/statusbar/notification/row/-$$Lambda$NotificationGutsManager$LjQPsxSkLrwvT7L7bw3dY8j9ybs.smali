.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$LjQPsxSkLrwvT7L7bw3dY8j9ybs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$LjQPsxSkLrwvT7L7bw3dY8j9ybs;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$LjQPsxSkLrwvT7L7bw3dY8j9ybs;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeNotificationInfo$5(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/view/View;)V

    return-void
.end method
