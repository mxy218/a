.class Lcom/android/server/firewall/CategoryFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "CategoryFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/CategoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_10

    .line 55
    new-instance p1, Lcom/android/server/firewall/CategoryFilter;

    invoke-direct {p1, v1, v0}, Lcom/android/server/firewall/CategoryFilter;-><init>(Ljava/lang/String;Lcom/android/server/firewall/CategoryFilter$1;)V

    return-object p1

    .line 52
    :cond_10
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Category name must be specified."

    invoke-direct {v1, v2, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method
