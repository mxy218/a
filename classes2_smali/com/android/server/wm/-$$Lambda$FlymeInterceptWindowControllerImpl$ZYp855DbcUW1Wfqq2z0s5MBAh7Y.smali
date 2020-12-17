.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;

.field private final synthetic f$1:Lcom/android/server/wm/AppWindowToken;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$0:Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$1:Lcom/android/server/wm/AppWindowToken;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$0:Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$1:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->lambda$shouldFinishWithAccessControl$0$FlymeInterceptWindowControllerImpl(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;Z)V

    return-void
.end method
