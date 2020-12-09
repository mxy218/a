.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->lambda$activityIdleInternalLocked$0$ActivityStackSupervisor()V

    return-void
.end method
