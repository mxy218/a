.class Lcom/android/server/firewall/StringFilter$7;
.super Lcom/android/server/firewall/StringFilter$ValueProvider;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"  # Ljava/lang/String;

    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter$ValueProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "resolvedComponent"  # Landroid/content/ComponentName;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 296
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_b

    .line 297
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 299
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method
