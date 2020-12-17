.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultLeftButton"
.end annotation


# instance fields
.field private mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .registers 2

    .line 851
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    new-instance p1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-direct {p1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V
    .registers 3

    .line 851
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    .registers 6

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$502(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 859
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_keyguardShowLeftAffordance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 860
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_63

    .line 861
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v4

    if-eqz v4, :cond_2c

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    iput-boolean v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_48

    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->ic_mic_26dp:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_52

    .line 865
    :cond_48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 867
    :goto_52
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_voice_assist_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_9c

    .line 870
    :cond_63
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v4

    if-eqz v4, :cond_78

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_79

    :cond_78
    move v2, v3

    :goto_79
    iput-boolean v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10804ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    .line 876
    :goto_9c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    .line 881
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2000()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
