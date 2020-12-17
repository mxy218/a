.class public final synthetic Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$LTMvIPTiTOOtdqpeHYTYFPUw6Js;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/SystemUIAppComponentFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIAppComponentFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$LTMvIPTiTOOtdqpeHYTYFPUw6Js;->f$0:Lcom/android/systemui/SystemUIAppComponentFactory;

    return-void
.end method


# virtual methods
.method public final onContextAvailable(Landroid/content/Context;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$LTMvIPTiTOOtdqpeHYTYFPUw6Js;->f$0:Lcom/android/systemui/SystemUIAppComponentFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactory;->lambda$instantiateApplication$0$SystemUIAppComponentFactory(Landroid/content/Context;)V

    return-void
.end method
