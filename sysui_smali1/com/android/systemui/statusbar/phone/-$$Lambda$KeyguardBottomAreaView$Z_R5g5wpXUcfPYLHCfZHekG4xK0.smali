.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Z_R5g5wpXUcfPYLHCfZHekG4xK0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Z_R5g5wpXUcfPYLHCfZHekG4xK0;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Z_R5g5wpXUcfPYLHCfZHekG4xK0;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$2$KeyguardBottomAreaView(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method