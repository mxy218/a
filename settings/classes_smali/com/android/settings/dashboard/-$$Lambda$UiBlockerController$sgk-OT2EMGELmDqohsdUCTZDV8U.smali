.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/UiBlockerController;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/UiBlockerController;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;->f$0:Lcom/android/settings/dashboard/UiBlockerController;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;->f$0:Lcom/android/settings/dashboard/UiBlockerController;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/UiBlockerController;->lambda$start$0$UiBlockerController(Ljava/lang/Runnable;)V

    return-void
.end method
