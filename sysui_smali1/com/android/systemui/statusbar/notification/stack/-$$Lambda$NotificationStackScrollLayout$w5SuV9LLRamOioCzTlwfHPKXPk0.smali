.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$w5SuV9LLRamOioCzTlwfHPKXPk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$w5SuV9LLRamOioCzTlwfHPKXPk0;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$w5SuV9LLRamOioCzTlwfHPKXPk0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$w5SuV9LLRamOioCzTlwfHPKXPk0;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$w5SuV9LLRamOioCzTlwfHPKXPk0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$performDismissAllAnimations$8$NotificationStackScrollLayout(Ljava/lang/Runnable;)V

    return-void
.end method
