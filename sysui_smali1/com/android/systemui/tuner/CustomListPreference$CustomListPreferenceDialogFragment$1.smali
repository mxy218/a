.class Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
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

    .line 97
    iput-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$1;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 100
    iget-object p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$1;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->onItemConfirmed()V

    return-void
.end method
