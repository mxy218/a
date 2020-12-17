.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$GraphicsBinder$NlrV8SQVzLPy9_MEuArCaj5AC0s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityManagerService$GraphicsBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$GraphicsBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$GraphicsBinder$NlrV8SQVzLPy9_MEuArCaj5AC0s;->f$0:Lcom/android/server/am/ActivityManagerService$GraphicsBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$GraphicsBinder$NlrV8SQVzLPy9_MEuArCaj5AC0s;->f$0:Lcom/android/server/am/ActivityManagerService$GraphicsBinder;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->lambda$dump$0$ActivityManagerService$GraphicsBinder()V

    return-void
.end method
