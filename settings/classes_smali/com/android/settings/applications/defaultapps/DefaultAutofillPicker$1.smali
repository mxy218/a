.class Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPackageAdded$0$DefaultAutofillPicker$1()V
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method public synthetic lambda$onPackageModified$1$DefaultAutofillPicker$1()V
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method public synthetic lambda$onPackageRemoved$2$DefaultAutofillPicker$1()V
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 138
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$FkWp-TdrMINB6fYhO2TMWiQylcc;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$FkWp-TdrMINB6fYhO2TMWiQylcc;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2

    .line 143
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$25IAggSj280QPpgEn1surevHwi4;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$25IAggSj280QPpgEn1surevHwi4;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 148
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$wTLnu3hVgtYHDTidiWNsKDdM5mo;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$wTLnu3hVgtYHDTidiWNsKDdM5mo;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
