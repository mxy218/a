.class Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 132
    iget-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p1, p2}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    .line 133
    iget-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p1}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/tuner/CustomListPreference;->isAutoClosePreference()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 134
    iget-object p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->onItemConfirmed()V

    :cond_16
    return-void
.end method
