.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$YivtzP7eb7Zr7-EMf8NvUtAYVzA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$YivtzP7eb7Zr7-EMf8NvUtAYVzA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$YivtzP7eb7Zr7-EMf8NvUtAYVzA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$onNotificationRemoved$1$StatusBarNotificationPresenter()V

    return-void
.end method
