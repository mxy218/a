.class Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;
.super Ljava/lang/Object;
.source "AbstractGlobalSettingsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->showDialog(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const-string p1, "AbstractGlobalSettingsPreference"

    .line 71
    :try_start_2
    iget-object p2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-static {p2}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$000(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-static {v0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$100(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_56

    .line 74
    :try_start_16
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1b

    goto :goto_42

    .line 76
    :catch_1b
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' to integer. Using "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    .line 77
    invoke-static {p2}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$100(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instead"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_42
    iget-object p2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-static {p2}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$200(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;->this$0:Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;

    invoke-static {p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->access$300(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_55} :catch_56

    goto :goto_5c

    :catch_56
    move-exception p0

    const-string p2, "Couldn\'t save data"

    .line 82
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    return-void
.end method
