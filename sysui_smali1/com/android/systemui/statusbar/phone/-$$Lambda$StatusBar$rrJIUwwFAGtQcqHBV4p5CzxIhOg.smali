.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rrJIUwwFAGtQcqHBV4p5CzxIhOg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rrJIUwwFAGtQcqHBV4p5CzxIhOg;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rrJIUwwFAGtQcqHBV4p5CzxIhOg;->f$0:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeActionDismissingKeyguard$30(Ljava/lang/Runnable;)V

    return-void
.end method
