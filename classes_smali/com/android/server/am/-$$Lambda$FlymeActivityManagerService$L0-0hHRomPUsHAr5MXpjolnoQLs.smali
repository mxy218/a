.class public final synthetic Lcom/android/server/am/-$$Lambda$FlymeActivityManagerService$L0-0hHRomPUsHAr5MXpjolnoQLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$FlymeActivityManagerService$L0-0hHRomPUsHAr5MXpjolnoQLs;->f$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$FlymeActivityManagerService$L0-0hHRomPUsHAr5MXpjolnoQLs;->f$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/FlymeActivityManagerService;->lambda$main$0(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method
