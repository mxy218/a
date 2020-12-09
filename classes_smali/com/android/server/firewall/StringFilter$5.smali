.class Lcom/android/server/firewall/StringFilter$5;
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

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter$ValueProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 276
    if-eqz p1, :cond_b

    .line 277
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 279
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
