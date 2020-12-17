.class Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment$1;
.super Ljava/lang/Object;
.source "HapicFeedbackThemeFragment.java"

# interfaces
.implements Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$OnGetHapticCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGetHapticComplete(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/soundandvibrate/HapticFeedbackThemeState$HapticThemeInfo;",
            ">;)V"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;

    invoke-static {p0, p1}, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;->access$000(Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;Ljava/util/ArrayList;)V

    return-void
.end method
