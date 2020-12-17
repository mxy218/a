.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchVoiceAssist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 601
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/assist/AssistManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->launchVoiceAssistFromKeyguard()V

    return-void
.end method
