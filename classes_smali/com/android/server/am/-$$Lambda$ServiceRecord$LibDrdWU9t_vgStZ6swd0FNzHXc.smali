.class public final synthetic Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;->f$0:Lcom/android/server/am/ServiceRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;->f$0:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->lambda$whitelistBgActivityStartsOnServiceStart$0$ServiceRecord()V

    return-void
.end method
