.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$oy9pBf4KjrW7ZRpgHkpOCIaDYlg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$oy9pBf4KjrW7ZRpgHkpOCIaDYlg;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$oy9pBf4KjrW7ZRpgHkpOCIaDYlg;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method
